generate_fcl --dsconf=MDC2020f --dsowner=brownd --run-number=1202 --description=EleBeamResampler --events-per-job=200000 --njobs=100 --include JobConfig/beam/EleBeamResampler.fcl --auxinput=1:physics.filters.beamResampler.fileNames:EleBeam.txt
for dirname in 000 001 002 003 004 005 006 007 008 009; do
 if test -d $dirname; then
  echo "found dir $dirname"
  rm -rf EleBeamResampler_$dirname
  mv $dirname EleBeamResampler_$dirname
 fi
done
