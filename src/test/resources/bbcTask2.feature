Feature: Smoke Tests from the final task

  Scenario Outline: BBC2 Part2 Test#1
    Given  User opens '<homePage>' BBC
    And User click button '<button>' navigation bar
    And Click button Football
    And Click button Scores and Fixtures
    And Select results for a day '<day>'
    And Search for a championship '<championship>'
    Then We determine that two teams '<team1>' and '<team2>' played with a score '<scoreTeam1>' : '<scoreTeam2>'
    And Click link '<team1>'
    And Checking '<team1>' and '<team2>' names and scores '<scoreTeam1>' : '<scoreTeam2>' at the center of the screen


    Examples:
      | homePage             | button | championship        | day    | team1               | team2           | scoreTeam1 | scoreTeam2 |
      | https://www.bbc.com/ | sport  | Champions League    | 15 FEB | Paris Saint Germain | Real Madrid     | 1          | 0          |
      | https://www.bbc.com/ | sport  | Scottish League Two | 15 FEB | Edinburgh City      | Albion Rovers   | 1          | 2          |
      | https://www.bbc.com/ | sport  | Club World Cup      | 12 FEB | Chelsea             | Palmeiras       | 2          | 1          |
      | https://www.bbc.com/ | sport  | Premier League      | 8 FEB  | Newcastle United    | Everton         | 3          | 1          |
      | https://www.bbc.com/ | sport  | Scottish League Two | 11 FEB | Edinburgh City      | Stirling Albion | 1          | 0          |