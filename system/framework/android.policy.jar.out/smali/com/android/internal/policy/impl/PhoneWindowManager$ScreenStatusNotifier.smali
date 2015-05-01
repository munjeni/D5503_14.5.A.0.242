.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenStatusNotifier"
.end annotation


# instance fields
.field private final mScreenStatus:I

.field private mSysfsPath:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "screenStatus"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 5911
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5912
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->mScreenStatus:I

    .line 5913
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->mSysfsPath:Ljava/lang/String;

    .line 5914
    return-void
.end method

.method private writeData(Ljava/io/File;I)V
    .locals 7
    .param p1, "sysfsFile"    # Ljava/io/File;
    .param p2, "val"    # I

    .prologue
    .line 5987
    const/4 v2, 0x0

    .line 5988
    .local v2, "fileWriter":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 5989
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 5992
    .local v4, "sysfsWriter":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5993
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5994
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5995
    .end local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    .local v5, "sysfsWriter":Ljava/io/PrintWriter;
    :try_start_3
    invoke-virtual {v5, p2}, Ljava/io/PrintWriter;->print(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 5999
    if-eqz v5, :cond_2

    .line 6000
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    move-object v4, v5

    .end local v5    # "sysfsWriter":Ljava/io/PrintWriter;
    .restart local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v2, v3

    .line 6002
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 5996
    :catch_0
    move-exception v6

    .line 5999
    :goto_1
    if-eqz v4, :cond_0

    .line 6000
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 5999
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_1

    .line 6000
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw v6

    .line 5999
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .end local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "sysfsWriter":Ljava/io/PrintWriter;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "sysfsWriter":Ljava/io/PrintWriter;
    .restart local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2

    .line 5996
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :catch_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .end local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "sysfsWriter":Ljava/io/PrintWriter;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "sysfsWriter":Ljava/io/PrintWriter;
    .restart local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_1

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .end local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "sysfsWriter":Ljava/io/PrintWriter;
    :cond_2
    move-object v4, v5

    .end local v5    # "sysfsWriter":Ljava/io/PrintWriter;
    .restart local v4    # "sysfsWriter":Ljava/io/PrintWriter;
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v2, v3

    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_0
.end method

.method private declared-synchronized writeSysfsFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 5928
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5930
    .local v4, "sysfsFile":Ljava/io/File;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_2

    .line 5932
    const/4 v1, 0x0

    .line 5933
    .local v1, "fileReader":Ljava/io/FileReader;
    const/4 v3, -0x1

    .line 5942
    .local v3, "screenStatusInMhlDriver":I
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5944
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .local v2, "fileReader":Ljava/io/FileReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v0

    .line 5948
    .local v0, "ScreenStatusCode":I
    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 5959
    if-eqz v2, :cond_0

    .line 5960
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    move-object v1, v2

    .line 5966
    .end local v0    # "ScreenStatusCode":I
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    :try_start_4
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->mScreenStatus:I

    if-ne v5, v6, :cond_4

    .line 5967
    if-eq v3, v6, :cond_2

    .line 5968
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->writeData(Ljava/io/File;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5976
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "screenStatusInMhlDriver":I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 5961
    .restart local v0    # "ScreenStatusCode":I
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "screenStatusInMhlDriver":I
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 5964
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 5951
    .end local v0    # "ScreenStatusCode":I
    :catch_1
    move-exception v5

    .line 5959
    :goto_2
    if-eqz v1, :cond_1

    .line 5960
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 5961
    :catch_2
    move-exception v5

    goto :goto_0

    .line 5953
    :catch_3
    move-exception v5

    .line 5959
    :goto_3
    if-eqz v1, :cond_1

    .line 5960
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 5961
    :catch_4
    move-exception v5

    goto :goto_0

    .line 5955
    :catch_5
    move-exception v5

    .line 5959
    :goto_4
    if-eqz v1, :cond_1

    .line 5960
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 5961
    :catch_6
    move-exception v5

    goto :goto_0

    .line 5958
    :catchall_0
    move-exception v5

    .line 5959
    :goto_5
    if-eqz v1, :cond_3

    .line 5960
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 5963
    :cond_3
    :goto_6
    :try_start_9
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5928
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "screenStatusInMhlDriver":I
    .end local v4    # "sysfsFile":Ljava/io/File;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 5970
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "screenStatusInMhlDriver":I
    .restart local v4    # "sysfsFile":Ljava/io/File;
    :cond_4
    :try_start_a
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->mScreenStatus:I

    if-nez v5, :cond_2

    .line 5971
    if-eqz v3, :cond_2

    .line 5972
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->writeData(Ljava/io/File;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 5961
    :catch_7
    move-exception v6

    goto :goto_6

    .line 5958
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 5955
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 5953
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 5951
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5918
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 5919
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->mSysfsPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenStatusNotifier;->writeSysfsFile(Ljava/lang/String;)V

    .line 5920
    return-void
.end method
