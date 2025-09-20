set shell := ["sh", "-c"]

registry := 'ghcr.io/anesthetised/containerized'

default:
    @just --list

image-build target version='latest':
    docker build -t {{registry}}/{{target}}:{{version}} ./{{target}}

image-push target version='latest':
    docker push {{registry}}/{{target}}:{{version}}
