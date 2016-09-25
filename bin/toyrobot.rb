#!/usr/bin/env ruby

$LOAD_PATH.push File.expand_path(File.dirname(__FILE__) + '/../lib')

require 'optparse'
require 'logger'
require 'toyrobot/version'
require 'toyrobot/logger'
require 'toyrobot/command_parser'
require 'toyrobot/table'
require 'toyrobot/position'
require 'toyrobot/robot'
require 'toyrobot/direction'
require 'toyrobot/simulator'
require 'toyrobot/app'
require 'toyrobot/cli'

robot_cli = ToyRobot::CLI.new
robot_cli.start
