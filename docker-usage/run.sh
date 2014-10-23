#!/bin/sh
sudo docker run -m 512m -d -P -name rs1_part1 changyy/mongod2.6.5-ubuntu14.04 --replSet rs1 --noprealloc --smallfiles
sudo docker run -m 512m -d -P -name rs1_part2 changyy/mongod2.6.5-ubuntu14.04 --replSet rs1 --noprealloc --smallfiles
