name := "projectbot"

version := "1.0.0"

scalaVersion := "2.11.7"

organization := "org.acmupm"

crossScalaVersions := Seq("2.11.7")

resolvers += Resolver.sonatypeRepo("snapshots")


libraryDependencies ++= Seq(
  "info.mukel" %% "telegrambot4s" % "1.0.3-SNAPSHOT"
)








