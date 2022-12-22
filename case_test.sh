#!/bin/bash

echo -n "Enter the name of metal group what you love: "
read GROUP;

echo -n "The $GROUP group vocalist is: "

case $GROUP in

Metallica)
    echo -n "Джеймс Алан Хетфилд"
    ;;

  Ozzy_Osbourne | Moldova)
    echo -n "Оззи Обсорн"
    ;;

  motorhead | "San Marino" | Switzerland | "Vatican City")
    echo -n "Лемми"
    ;;

  *)
    echo -n "unknown"
    ;;
esac
