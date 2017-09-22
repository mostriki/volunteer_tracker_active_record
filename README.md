# _Volunteer Tracker_

#### _An independent project exploring database basics in Ruby, 09.22.2017_

#### By _Riki Montgomery_

## Description

_Build an internal website to track volunteers working on projects for a volunteer organization._

## Specs
| Volunteer Specs                                          | Input             | Output            |
|------------------------------------------------------|-------------------|-------------------|
| The array is empty to start.                         |                   | []                |
| Return the name of the volunteer.                    | Jane              | Jane              |
| Return the project_id of the volunteer.              | 1                 | 1                 |
| Check for equality based on the name of a volunteer. | Jane, 1 & Jane, 1 | Jane, 1 = Jane, 1 |
| Return all volunteers.                               | Jane, 1 & Joe, 1  | Jane, 1 & Joe, 1  |
| Add a volunteer to the database.                     | Jane, 1           | Jane, 1           |
| Return a volunteer by id.                            | 1                 | Jane              |

| Project Specs                                            | Input                                               | Output                                              |
|----------------------------------------------------------|-----------------------------------------------------|-----------------------------------------------------|
| Array empty to start.                                    |                                                     | []                                                  |
| Return the project title.                                | Teaching Kids to Code                               | Teaching Kids to Code                               |
| Return the id of the project before saving project.      | Teaching Kids to Code, 1                            | 1                                                   |
| Return the id of the project after saving project.       | Teaching Kids to Code, 1                            | 1                                                   |
| Is the same project if two projects have the same title. | Teaching Kids to Code, 1 & Teaching Kids to Code, 1 | Teaching Kids to Code, 1 = Teaching Kids to Code, 1 |
| Return all projects.                                     | Teaching Kids to Code, 1 & Teaching Ruby to Kids, 2 | Teaching Kids to Code, 1& Teaching Ruby to Kids, 2  |
| Saves a project to the database.                         | Teaching Kids to Code, 1                            | Teaching Kids to Code, 1                            |
| Returns a project by id.                                 | 1                                                   | Teaching Kids to Code                               |
| Return all volunteers for a specific project.            | Teaching Kids to Code                               | Jasmine, Joe                                        |
| Allow a user to update a project.                        | Teaching Kids to Code                               | Teaching Ruby to Kids                               |
| Allow a user to delete a project.                        | Teaching Kids to Code                               | []                                                  |

## Setup/Installation Requirements

1. _`$ git clone` [https://github.com/mostriki/volunteer_tracker](https://github.com/mostriki/volunteer_tracker)_

2. _`$ cd volunteer_tracker/`_

3. _`$ ruby app.rb`_

4. _Open [http://localhost:4567/](http://localhost:4567/) in your favorite web browser._

5. _You can also try the app on [heroku](https://...com/)._

## Support and contact details

_If you have any updates or suggestions please contact me or make a contribution to my repository._

### License

MIT License

Copyright (c) 2017 Riki Montgomery
