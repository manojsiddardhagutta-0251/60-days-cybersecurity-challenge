#!/bin/bash
games=("freefire" "bgmi" "minecraft")
games[1]="temple run"
unset games[0]
echo "${games[@]}"
