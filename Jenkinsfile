node {
    def app

    stage('Clone repo') {
        sh 'docker login -u AWS -p eyJwYXlsb2FkIjoiUUw2MEFFQ2FvaUVEMXdzOW9pTjczRXhFMmE1NllXeFAyY2xzQXZIdmZ6T3pCcTd0Z2dZdzJYYnJ1UjZBakgyS2U5Rkw3ejZFR1VQQm5LVkJZaFRseU5SdVUwOWZabVYwQStCdFoyZStyVlIxL1pPWXc1REJ1bFhXd3hWbXZzcStrY1BZV3hOdWdiZnZRMmZINHFyMUhMQkNMcHZMK2Y0NGw5TUNhVGV0VFRGekNxTElsYjBybWtyN0tUcU5CT29Zem5tV1lZcGs5K3hGVXV4ZVJKTGtSRFRHMUl2cE4vbkYrYnBxdHBKUDZlbWJtcGUrZGRRYWU2Ym9OMjk5TklERlRGMStMRC83dmNLbHFuMG91Y1pnUjZXR2ZKc3BXckZuZWc4d1FoSjI5ZWlWU2EyTmZqcStlVS9Db3V1UjRKLzV2cFRnYW04TVBPQU8yWXlFazllb2g3SUt2N0doUllnV3JyU1pURndwNGxZdXFXOVo0aUtmbzVLVnB4MzZOTWZXZXNLLzZLV3hldUtxVDBEZFNYeWhmd2hmWGJWSjZtYUxnOU8xVWNNSk50blNsZCt6bENvcy80ek1LMFpWNTJtWjR1bkh5ODJsMjFXbjFQZkgzTVpCUGFOcWF3ZzVGMnRONjhTL0piV1BoOENmRkFtc3ZxUlFjSzA4VWxaUlE5ZWdzS1d1WkdqekRGMzlZTWhPWTZlamFOMmp1RU8yQUg4ZnBHYkZvYjREeUdEaXlKajZXc2x0ZkU0aGtHZ0U3c1F4VFhLb2hZQ1l6UVozb0gvQi9BeGkyekN5QytnZFYxcllnWXVTVjArQXlydFE0YUJUMlNRaFRQVVVnNWlSRStVMlYzSCtOaUxrZmJ0Zm11ZGhMZldlSEF0MTlKM2N3Y2Q0RG9Zbm1mb3JGZXNJSHRvcUM0SktwNGtSWUVmK0JQNVVOdktvTWUyeHZ0ZWR6T1hzU3k1S2hIN1BEUkdJTGx6R1RRaFYweDMrOHVQSWlIQnBINWVLdEtGdUNZcnhYc1ZyRWFPK0h2ZHFOa2E2YXlkNXVuWlp1OWFZSlh3UGtNbmc2bE9QaVM2VUNHSGhySEgvTi9KUmVvbmhWVDJsTTI4dk40cGlKWnVDL2hiTE52V1J3Q2hHbFFBSUthRXB3RVlnZzg4bmI5ekRIb0NXSlV6UFBiZ3FEbDAzdVY4UCtIOTBYWlhBNjJKdVZFRzlxdU9HOWVSMkRRY3docDhnNGVFRHlqaU1oTEpKWXJuMUp1bCtlNVBGbGNFMGJUT3BqcXgvNm5KSmxSNzNDQ0ZwcXpwR2txWkd2UDhpa0xqZ2VrZlkyRUp1TEl4VWpFUEhNaXN2UXlTTmNBUnZxTG1CZzhvOXRsYWNQVzF3bVUvYTEvL2NUUnJvWG0yTUkrRGF6UWVyYjcrdWxnZVZ2RXRieEFBMlc3MlV4UDlua0tTMWZQell3bVU9IiwiZGF0YWtleSI6IkFRRUJBSGh3bTBZYUlTSmVSdEptNW4xRzZ1cWVla1h1b1hYUGU1VUZjZTlScTgvMTR3QUFBSDR3ZkFZSktvWklodmNOQVFjR29HOHdiUUlCQURCb0Jna3Foa2lHOXcwQkJ3RXdIZ1lKWUlaSUFXVURCQUV1TUJFRURNSHp3WStiaGxXbC9mNDNuUUlCRUlBN21BWXRzKzh0cmVZZXVDOFpjbmx6a0VxRUdscW1NVndWZ0FqOHM4ZGJwYkVONGNIaDcvYnlsc3ZLL1JHKzEzU3hWMWRid1RmOVhPYS9sTTQ9IiwidmVyc2lvbiI6IjIiLCJ0eXBlIjoiREFUQV9LRVkiLCJleHBpcmF0aW9uIjoxNTIzMzE4MDE0fQ== https://445579089480.dkr.ecr.us-east-1.amazonaws.com'
        checkout scm
    }

    stage('Build image') {
        app = docker.build("mastermind")
    }
}