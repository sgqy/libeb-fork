/*                                                            -*- C -*-
 * Copyright (c) 1999, 2000, 01
 *    Motoyuki Kasahara
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

/*
 * ������ˡ:
 *     text <book-path> <subbook-index> <number>
 * ��:
 *     text /cdrom 0 10
 * ����:
 *     <book-path> �ǻ��ꤷ�� CD-ROM ���Ҥ�����������ܤ����ӡ���ʸ
 *     ����Ƭ���� <number> ��ʬ��ñ�����������Ϥ��ޤ���
 *
 *     <subbook-index> �ˤϡ������оݤ����ܤΥ���ǥå�������ꤷ��
 *     ��������ǥå����ϡ����Ҥκǽ�����ܤ����� 0��1��2 ... ��
 *     �ʤ�ޤ���
 */
#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <stdio.h>
#ifdef HAVE_STDLIB_H
#include <stdlib.h>
#endif

#include <eb/eb.h>
#include <eb/error.h>
#include <eb/text.h>

#define MAXLEN_TEXT 1023

int
main(argc, argv)
    int argc;
    char *argv[];
{
    EB_Error_Code error_code;
    EB_Book book;
    EB_Subbook_Code subbook_list[EB_MAX_SUBBOOKS];
    int subbook_count;
    int subbook_index;
    EB_Position text_position;
    char text[MAXLEN_TEXT + 1];
    ssize_t text_length;
    int text_count;
    int i;

    /* ���ޥ�ɹ԰���������å���*/
    if (argc != 4) {
        fprintf(stderr, "Usage: %s book-path subbook-index number\n",
            argv[0]);
        exit(1);
    }
    text_count = atoi(argv[3]);

    /* EB �饤�֥��� `book' ��������*/
    eb_initialize_library();
    eb_initialize_book(&book);

    /* ���Ҥ� `book' �˷���դ��롣*/
    error_code = eb_bind(&book, argv[1]);
    if (error_code != EB_SUCCESS) {
        fprintf(stderr, "%s: failed to bind the book, %s: %s\n",
            argv[0], eb_error_message(error_code), argv[1]);
        goto die;
    }

    /* ���ܤΰ����������*/
    error_code = eb_subbook_list(&book, subbook_list, &subbook_count);
    if (error_code != EB_SUCCESS) {
        fprintf(stderr, "%s: failed to get the subbbook list, %s\n",
            argv[0], eb_error_message(error_code));
        goto die;
    }

    /* ���ܤΥ���ǥå����������*/
    subbook_index = atoi(argv[2]);

    /*�ָ��ߤ����� (current subbook)�פ����ꡣ*/
    if (eb_set_subbook(&book, subbook_list[subbook_index]) < 0) {
        fprintf(stderr, "%s: failed to set the current subbook, %s\n",
            argv[0], eb_error_message(error_code));
        goto die;
    }

    /* �ƥ����Ȥγ��ϰ��֤������*/
    error_code = eb_text(&book, &text_position);
    if (error_code != EB_SUCCESS) {
        fprintf(stderr, "%s: failed to get text information, %s\n",
            argv[0], eb_error_message(error_code));
        goto die;
    }

    /* �ƥ����Ȥ򥷡�����*/
    error_code = eb_seek_text(&book, &text_position);
    if (error_code != EB_SUCCESS) {
        fprintf(stderr, "%s: failed to seek text, %s\n",
            argv[0], eb_error_message(error_code));
        goto die;
    }

    i = 0;
    while (i < text_count) {
        /* �ƥ����Ȥ������*/
	error_code = eb_read_text(&book, NULL, NULL, NULL, MAXLEN_TEXT,
	    text, &text_length);
	if (error_code != EB_SUCCESS) {
            fprintf(stderr, "%s: failed to read text, %s\n",
                argv[0], eb_error_message(error_code));
            goto die;
        }
	fputs(text, stdout);

        if (!eb_is_text_stopped(&book))
	    continue;

	fputs("\n----------------------------------------\n", stdout);

        /* ����ñ��������ذ�ư��*/
	error_code = eb_forward_text(&book, NULL);
	if (error_code == EB_ERR_END_OF_CONTENT)
	    fputs("\n[END]\n", stdout);
	else if (error_code != EB_SUCCESS) {
	    fprintf(stderr, "%s: failed to read text, %s\n",
		argv[0], eb_error_message(error_code));
	    goto die;
	}
	i++;
    }
        
    /* ���Ҥ� EB �饤�֥������Ѥ�λ��*/
    eb_finalize_book(&book);
    eb_finalize_library();
    exit(0);

    /* ���顼ȯ���ǽ�λ����Ȥ��ν�����*/
  die:
    eb_finalize_book(&book);
    eb_finalize_library();
    exit(1);
}