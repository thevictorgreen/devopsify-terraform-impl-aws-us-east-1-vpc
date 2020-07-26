#!/bin/bash

environment=$(cat environment.cfg)
echo $environment


replace=$( terraform output "$environment-useast1-bastion-security-group" )
echo $replace
sed -i "" "s/A1A1A1/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-cluster-security-group" )
echo $replace
sed -i "" "s/B1B1B1/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-private-security-group" )
echo $replace
sed -i "" "s/C1C1C1/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-public-security-group"  )
echo $replace
sed -i "" "s/D1D1D1/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-private-us-east-1a-sn" )
echo $replace
sed -i "" "s/OPOPOP/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-private-us-east-1b-sn" )
echo $replace
sed -i "" "s/PQPQPQ/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-private-us-east-1c-sn" )
echo $replace
sed -i "" "s/QRQRQR/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-private-us-east-1d-sn" )
echo $replace
sed -i "" "s/RSRSRS/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-private-us-east-1e-sn" )
echo $replace
sed -i "" "s/STSTST/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-private-us-east-1f-sn" )
echo $replace
sed -i "" "s/TUTUTU/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-public-us-east-1a-sn" )
echo $replace
sed -i "" "s/UVUVUV/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-public-us-east-1b-sn" )
echo $replace
sed -i "" "s/VWVWVW/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-public-us-east-1c-sn" )
echo $replace
sed -i "" "s/WXWXWX/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-public-us-east-1d-sn" )
echo $replace
sed -i "" "s/XYXYXY/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-public-us-east-1e-sn" )
echo $replace
sed -i "" "s/YZYZYZ/$replace/g" tf_vars.tf

replace=$( terraform output "$environment-useast1-public-us-east-1f-sn" )
echo $replace
sed -i "" "s/ZAZAZA/$replace/g" tf_vars.tf
