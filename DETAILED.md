Travis CD setup

1. Create repo
2. Clone

```
git clone https://github.com/firedot/travis_cd.git
```

3. Go in the repo dir

```
cd travis_cd/
```


4. Create new Branch ```f-addHelloScript```

```
git checkout -b "f-addHelloScript"
```

5. Create (or copy) ```hello.sh```

```
cp ../bashScript/hello.sh .
```
or ```touch hello.sh``` and paste the content below

```
#!/usr/bin/env bash

echo "hello"
```

6. Check if ```hello.sh``` has execution permissions

```
ls -la
```
7. Git add ```hello.sh```

```
git add hello.sh 
```

8. Git commit -m " -m "added hello.sh which prints hello”

```
git commit -m "added hello.sh which prints hello"
```
9. Git push —set-upstream origin f-addHelloScript

10. Create pull request
11. Merge
12. Checkout to the master branch

```
git checkout master
```

13. Pull the changes from Github into the master branch

```
git pull origin master
```
14. Enable repo on Travis
15. Create new branch ```ImplementTravis```

```
git checkout -b "ImplementTravis"

16. Create ```.travis.yml```
17. Implement travis configuration with a test that always passes

```

```
sudo: required
script:
- exit 0
```
18. Git add ```.travis.yml```

```
git add .travis.yml
```

19. Git commit
20. Git push
21. Create pull request
22. Merge
23. Checkout to the master branch
24. Pull the changes from GitHub into the master branch
25. Create new branch ```f-addTravisTests```
26. Create file ```test.sh```
27. Check if ```test.sh``` has execution permissions
28. Add a test that check the output from ```hello.sh```

```
#!/usr/bin/env bash
 output=$(bash -x hello.sh)
 if [ "${output}" == "hello" ]; then
  echo Test pass
else
  echo Test fails
  exit 1
fi
```

29. Git add test.sh
30. Git commit 
31. Git push
32. Create pull request
33. Merge
34. Pull changes from Github into the master branch
35. Create new branch ```addTestToTravis```
36. Edit ```.travis.yml``` to use the tests from ```test.sh```
```
sudo: required
script:
- bash test.sh
```

37. Git add ```.travis.yml```
38. Git commit
39. Git push
40. Pull changes from Github into master branch
41. Create new branch ```updateTravis```
42. Edit ```.travis.yml``` to implement releases to GitHub

```
sudo: required
script:
- bash test.sh
deploy:
  provider: releases
  api_key:
    secure: 2Q66cKH59vht0c7AriqF9sYvPDgeJPW0iihYSK4ThEZNgOs4mLoaUZHWNzMSwN4M3CNoahLJDyQG4MbgH1b7jMPcY2Zj8PMBGz3HEU2DOZTbI7Ex/S+rmpKm1zvNokrDEhbHXFi88Mo7T/W+Cf09Z2C2Pf1IizjBgZw5NIVxsiU9m1OvMYjeQfti7io1IRFpVsDgQ+AR0wqdCkQuNn7ZDavdslsDc2KsxNMnvxw19h4aG9Ia66Ax6fuGiEPfeyMXUiSabwWPQST8GlgjH0EmNJxnaKEC7SslvOhSoERhfvZ1riXP96ezjo8Zjs/IOcH2tERqwYOabx7JFfh4TAynEuytG1IYsO8xzgafqO6wSBq2UoKWrmV3/+edbs9gbq/8BuYgrJ5fytusDfFZZ+4fGZyzEVUkDZm83bXSO0t2yqmCjKqJ6ptI1+zB5fiChZDHfSk8AzY4GiARtcy55xLoabFfmwT4ia0RXcLEsOFNm4DqRjgo9z6tFXphCUolyuaFzMT30dzqmOgndgSLl3f0Iv507c4PJ5txamTq+Amlu/3oQZPkhiVRHCod4iIkSs5IqaLgqtbY3y+BSfhm9hnBrftx7LB5siLGmed0Q0kTtgaVvWYr28NLe0wvJtxEXDmK6IX6fcmYOpYPxToaGFSaspcYvuKE+BcGZ3dUizZasII=
  file: hello.sh
  on:
    repo: firedot/travis_cd
```

43. Git add ```.travis.yml```
44. Git commit 
45. Git push
46. Pull the changes from GitHub to master
47. create new branch ```addDETAILED.md```
48. git add thisfile (DETAILED.md)
49. Git commit
50. Git push 
51. Create pull request
52. Merge. 