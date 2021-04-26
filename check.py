import mosspy

userid = 841645631
m = mosspy.Moss(userid, "bash")

# m.addBaseFile("submission/a01.py")
# m.addBaseFile("submission/test_student.py")

# Submission Files

# m.addFile("./submissions/b.sh")
m.addFile("./submissions/d.sh")
m.addFile("./submissions/u.sh")
# m.addFile("./submissions/a.sh")


# progress function optional, run on every file uploaded
# result is submission URL
url = m.send()
print()


print("Report Url: " + url)

# Save report file
# m.saveWebPage(url, "report.html")

# Download whole report locally including code diff links
#mosspy.download_report(
#     url,
#     "report/",
#     connections=8,
# )
# log_level=logging.DEBUG (20 to disable)
# on_read function run for every downloaded file