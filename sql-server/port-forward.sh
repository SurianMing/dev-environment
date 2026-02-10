#!/bin/bash

kubectl port-forward -n data pod/mssql-0 1433:1433