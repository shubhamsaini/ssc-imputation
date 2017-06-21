#!/bin/bash

source params.sh

VCFFILE=/storage/mgymrek/ssc-denovos/test/hipstr_calls_12_145.vcf.gz
OUTDIR=/storage/mgymrek/ssc-denovos/test/
SNPVCF=/storage/mgymrek/ssc-denovos/test/shapeit.chr12.vcf.gz 

${DENOVOFINDER} \
    --str-vcf ${VCFFILE} \
    --fam ${FAMFILE} \
    --snp-vcf ${SNPVCF} \
    --denovo-vcf ${OUTDIR}/test_denovos_withsnps.vcf.gz
tabix -p vcf ${OUTDIR}/test_denovos_withsnps.vcf.gz
