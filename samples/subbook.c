/*
 * Filename:
 *     subbook.c
 *
 * Usage:
 *     subbook book-path
 *
 * Example:
 *     subbook /cdrom
 *
 * Description:
 *     This program shows titles of subbooks in a book.
 *     `book-path' points to the top directory of the CD-ROM book
 *     where the file CATALOG or CATALOGS resides.
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

int
main(argc, argv)
    int argc;
    char *argv[];
{
    EB_Book book;
    EB_Subbook_Code sublist[EB_MAX_SUBBOOKS];
    int subcount;
    const char *title;
    int i;

    /*
     * Check for command line arguments.
     */
    if (argc != 2) {
	fprintf(stderr, "Usage: %s book-path\n", argv[0]);
	exit(1);
    }

    /*
     * Initialize `book'.
     */
    eb_initialize(&book);

    /*
     * Bind a book to `book'.
     */
    if (eb_bind(&book, argv[1]) == -1) {
	fprintf(stderr, "%s: failed to bind the book, %s: %s\n",
	    argv[0], eb_error_message(), argv[1]);
	exit(1);
    }

    /*
     * Get the subbook list.
     */
    subcount = eb_subbook_list(&book, sublist);
    if (subcount < 0) {
	fprintf(stderr, "%s: failed to get the subbbook list, %s\n",
	    argv[0], eb_error_message());
	eb_clear(&book);
	exit(1);
    }

    /*
     * Output titles of subbooks in the book.
     */
    for (i = 0; i < subcount; i++) {
	title = eb_subbook_title2(&book, sublist[i]);
	if (title == NULL) {
	    fprintf(stderr, "%s: failed to get the title, %s\n",
		argv[0], eb_error_message());
	    continue;
	}
	printf("%d: %s\n", i, title);
    }

    /*
     * Clear the book.
     */
    eb_clear(&book);

    exit(0);
}