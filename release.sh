VERSION=`cat version`
echo $VERSION

git tag $VERSION
git push --tags
pod trunk push ConnectPay.podspec
