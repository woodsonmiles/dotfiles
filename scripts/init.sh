#!/bin/bash
set +eou pipefail

# window games won't start
echo "VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json:/usr/share/vulkan/icd.d/nvidia_icd.json >> /etc/environment
