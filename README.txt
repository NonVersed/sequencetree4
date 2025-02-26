==== SequenceTree4 Installation for Linux (tested with Pop! OS 22.04 LTS) ====

Install FFTW (tested with 3.3.10)
  0. Download fftw at http://www.fftw.org/
  1. Extract contents to folder
  2. cd to FFTW folder
  3. $./configure
  4. $make
  5. $sudo make install


Install GNU Scientific Library (tested with 2.8)
  0. Download GNU Scientific Library at https://ftp.gnu.org/gnu/gsl/
  1. Extract contents to folder
  2. cd to GSL folder
  3. $./configure
  4. $make
  5. $sudo make install


Install Git
  0. $sudo apt-get install git


Install Qt5
  0. $sudo apt-get install qtcreator qtbase5-dev qt5-qmake cmake


Download and install SequenceTree4
  0. $git clone https://github.com/NonVersed/sequencetree4.git
  1. $cd sequencetree4/src
  2. $qmake
  3. $make
  4. $cd ..
  5. $mkdir tmp

Run SequenceTree 4
  0. $cd sequencetree4/bin
  1. $./st4



