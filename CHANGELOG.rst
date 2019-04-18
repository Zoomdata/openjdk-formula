openjdk-formula
===============

2019.04.18

- Fix installation on Debian 7 "wheezy" (ELTS release) which was moved to the
  archive at http://archive.debian.org/
- Fix installation on Debian 8 "jessie" (old stable), since the backports
  repository with JRE 8 packages also was moved to the archive

2019.01.28

- Set ``JAVA_HOME`` environment variable globally by default

2019.01.25

- Added installation of OpenJDK's headless JRE 8 on old stable Debian "jessie"
  and Ubuntu 14.04 by default
- Supported OpenJDK 7 on Debian ELTS "wheezy", there are no Java 8 packages
- Used "headless" JRE on RedHat distributions as well

2019.01.23 **Created the formula**

- Added very basic JRE package installation support on modern RedHat and Debian
  operating systems
