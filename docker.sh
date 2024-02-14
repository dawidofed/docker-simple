#!/bin/bash

check_errors()
{
  EXITCODE=$1
  if [[ ${EXITCODE} -ne 0 ]]; then
    log_message "ERROR: jest kilka błędów, sprawdź wyjście, aby poznać szczegóły. Wciśnij ENTER, aby kontynuować, albo Ctrl+C aby zattrzymać."
    read
  fi
}

start()
{
  log_message "Startujemy kontenery..."
  docker-compose -f docker-compose.yml up -d
  check_errors $?
  status
  log_message "Kontenery uruchomione. Użyj '$0 log' aby zobaczyć logi kontenerów."
}

stop()
{
  log_message "Zatrzymuję kontenery..."
  docker-compose stop
  check_errors $?
}

down()
{
  log_message "Wyłączam kontenery (down)..."
  docker-compose down
  check_errors $?
}

build()
{
  log_message "Budowanie komtenerów..."
  docker-compose build
  check_errors $?
}

rebuild()
{
  stop
  remove_images
  remove_containers
  check_errors $?
  build
}

remove_images()
{
  log_message "Usuwam nieużywane obrazy..."
  docker volume prune -f
}

remove_containers()
{
  log_message "Usuwam kontenery..."
  docker-compose rm -f
}

log()
{
  log_message "Śledzenie logów kontenerów. Wciśnij Ctrl+C aby zatrzymać."
  docker-compose logs -f --tail=40
}

status()
{
  echo "-- [Kontenery - containers]----------------------------------------------"
  docker-compose ps
}

restart()
{
  stop
  start
}

restart_hard()
{
  stop
  down
  start
}

helper()
{
  echo "
  Dostępne opcje:
  -------------------------------------------------------------------------
  $0 check         - sprawdzenie

  $0 start         - uruchomienie kontenerów
  $0 stop          - zatrzymywanie kontenerów
  $0 restart       - restart kontenerów
  $0 restart_hard  - twardy restart, wraz z 'down'

  $0 build         - budowanie kontenerów
  $0 rebuild       - przebudowanie kontenerów

  $0 log           - podgląd logów kontenerów
  $0 status        - podgląd statusów kontenerów

  " | sed "s/^[ \t]*//"
}

DOCKER_COMMAND=${1}
DOCKER_ARG1=${2}

case ${DOCKER_COMMAND} in
  start) start;;
  stop) stop;;
  restart) restart;;
  restart_hard) restart_hard;;
  build) build;;
  rebuild) rebuild;;
  log) log;;
  status) status;;
  *) helper;;
esac
