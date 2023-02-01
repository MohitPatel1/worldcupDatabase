#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams,games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WIN_GOALS OPP_GOALS
do
  if [[ $YEAR != 'year' ]]
  then
    WIN=$($PSQL "select name from teams where name='$WINNER'")
    OPP=$($PSQL "select name from teams where name='$OPPONENT'")
    G_YEAR=$($PSQL "select year from games where year='$YEAR'")
    G_ROUND=$($PSQL "select round from games where round='$ROUND'")

    if [[ -z $WIN ]]
    then
      echo "$($PSQL "insert into teams(name) values('$WINNER')")"
      fi
    if [[ -z $OPP ]]
    then
      echo "$($PSQL "insert into teams(name) values('$OPPONENT')")"
      fi
    WIN_ID="$($PSQL "select team_id from teams where name='$WINNER'")"
    OPP_ID="$($PSQL "select team_id from teams where name='$OPPONENT'")"
    if [[ -z $G_YEAR || -z $G_ROUND || -z $G_WIN ]]
    then
      echo "$($PSQL "insert into games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) values($YEAR,'$ROUND',$WIN_GOALS,$OPP_GOALS,$WIN_ID,$OPP_ID)")"
      fi
  fi 
done
