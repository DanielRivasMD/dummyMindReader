FROM julia

RUN apt-get update && apt-get install -y git qt5-default xvfb && git clone https://github.com/DanielRivasMD/dummyMindReader.git
RUN julia --project=/dummyMindReader/ -e 'import Pkg; Pkg.instantiate()'
COPY run_script.sh /
MAINTAINER Evgeny Akkuratov <akkuratov.evgeny@gmail.com>

ENTRYPOINT ["/run_script.sh"]
