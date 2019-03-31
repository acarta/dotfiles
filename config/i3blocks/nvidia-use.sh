#!/bin/bash
nvidia-smi --format=csv,noheader --query-gpu=utilization.gpu
