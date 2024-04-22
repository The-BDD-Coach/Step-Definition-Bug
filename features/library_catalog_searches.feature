Feature: Library book searches and book delivery

Copyright 2014 by Leslie Brooks; all rights reserved

  - User Story #1 - Anyone can search the catalog; they don't have to be a cardholder
    - The catalog can be searched by first or last name of the author
    - Catalog searches return all titles and author names when a match is made on the author's name.
    - Matches are case insensitive, and match if the searched string appears anywhere in the author's name.


Scenario: The catalog can be searched by author's name.
    Given these books in the catalog
    | Author          | Title                       |
    | Stephen King    | The Shining                 |
    | James Baldwin   | If Beale Street Could Talk  |
    When an author name search is performed for Stephen
    Then only these books will be returned
    | Author          | Title                       |
    | Stephen King    | The Shining                 |


Scenario Outline: Author name searches are case insensitive.
    Given these books in the catalog
    | Author          | Title                       |
    | Stephen King    | The Shining                 |
    | James Baldwin   | If Beale Street Could Talk  |
    When a name search is performed for <Name>
    Then only these books will be returned
    | Author          | Title                       |
    | Stephen King    | The Shining                 |

    Examples:
    | Name    |
    | STEPHEN |
    | stephen |
