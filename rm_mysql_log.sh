#!/usr/bin/env bash
#
# Author: bavdu
# Email: bavduer@163.com
# Github: https://github.com/bavdu
# Date: 2018/12/20

for days in {1..31}
do
    {
        sed -ri "/[^.]*$days\/Jan\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Feb\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Mar\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Apr\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/May\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Jun\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Jul\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Aug\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Sep\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Oct\/2018[^.]*/d" $1
        sed -ri "/[^.]*$days\/Nov\/2018[^.]*/d" $1
    }&
done
wait
echo "1 ~ 11 months remove finish..."

for days in {1..19}
do
    {
        sed -ri "/[^.]*$days\/\/2018[^.]*/d" $1
    }&
done
wait
echo "12 months remove finish..."
