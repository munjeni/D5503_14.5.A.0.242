.class public Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;
.super Ljava/lang/Object;
.source "CustomizedApplicationInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CustomizedApplicationInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationSettings"
.end annotation


# instance fields
.field private mInstalledPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    .line 869
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_SETTINGS_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, "settingsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    invoke-direct {p0, v0}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->read(Ljava/io/File;)V

    .line 873
    :cond_0
    return-void
.end method

.method private read(Ljava/io/File;)V
    .locals 11
    .param p1, "settingsFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 898
    const/4 v1, 0x0

    .line 900
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 902
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 906
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v8, :cond_1

    if-ne v6, v9, :cond_0

    .line 910
    :cond_1
    if-eq v6, v8, :cond_3

    .line 911
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No start tag found in application installer settings"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 933
    if-eqz v2, :cond_9

    .line 935
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 938
    :goto_0
    const/4 v1, 0x0

    .line 941
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-void

    .line 915
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_3
    :try_start_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 917
    .local v3, "outerDepth":I
    :cond_4
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_7

    if-ne v6, v10, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_7

    .line 918
    :cond_5
    if-eq v6, v10, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 921
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 923
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "last-platform-version"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 924
    const/4 v7, 0x0

    const-string v8, "swversion"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->mSoftwareVersion:Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 929
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 930
    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "A XmlPullParserException occured when parsing. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 933
    if-eqz v1, :cond_2

    .line 935
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 938
    :goto_4
    const/4 v1, 0x0

    goto :goto_1

    .line 925
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_6
    :try_start_6
    const-string v7, "installed"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 926
    invoke-direct {p0, v4}, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->readInstalled(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 931
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_1
    move-exception v7

    move-object v1, v2

    .line 933
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v1, :cond_2

    .line 935
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 938
    :goto_6
    const/4 v1, 0x0

    goto :goto_1

    .line 933
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_7
    if-eqz v2, :cond_9

    .line 935
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 938
    :goto_7
    const/4 v1, 0x0

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 933
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v1, :cond_8

    .line 935
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 938
    :goto_9
    const/4 v1, 0x0

    :cond_8
    throw v7

    .line 936
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :catch_2
    move-exception v7

    goto :goto_0

    .restart local v3    # "outerDepth":I
    :catch_3
    move-exception v7

    goto :goto_7

    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    goto :goto_4

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v7

    goto :goto_6

    :catch_6
    move-exception v8

    goto :goto_9

    .line 933
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto :goto_8

    .line 931
    :catch_7
    move-exception v7

    goto :goto_5

    .line 929
    :catch_8
    move-exception v0

    goto :goto_3

    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_9
    move-object v1, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private readInstalled(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 944
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 947
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 948
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 952
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 954
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 956
    iget-object v4, p0, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 965
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 958
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in settings file: <installed> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 963
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <installed>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 968
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 891
    return-void
.end method

.method getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isPreinstalled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method save(Ljava/lang/String;)V
    .locals 12
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 971
    const/4 v1, 0x0

    .line 972
    .local v1, "fstr":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 974
    .local v6, "str":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->APPLICATION_SETTINGS_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$100()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .local v2, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 978
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .local v7, "str":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 979
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 980
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 981
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 984
    const/4 v8, 0x0

    const-string v9, "packages"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 985
    const/4 v8, 0x0

    const-string v9, "last-platform-version"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    if-eqz p1, :cond_0

    .line 987
    const/4 v8, 0x0

    const-string v9, "swversion"

    invoke-interface {v5, v8, v9, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 989
    :cond_0
    const/4 v8, 0x0

    const-string v9, "last-platform-version"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 990
    const/4 v8, 0x0

    const-string v9, "installed"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    iget-object v8, p0, Lcom/android/server/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 992
    .local v4, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "item"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v5, v8, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 994
    const/4 v8, 0x0

    const-string v9, "item"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1005
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 1006
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplicationSettings.save(): IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1008
    if-eqz v1, :cond_1

    .line 1010
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1015
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 1017
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1023
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 997
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "str":Ljava/io/BufferedOutputStream;
    :cond_3
    const/4 v8, 0x0

    :try_start_6
    const-string v9, "installed"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 998
    const/4 v8, 0x0

    const-string v9, "packages"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1000
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1002
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1003
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1008
    if-eqz v2, :cond_4

    .line 1010
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1015
    :cond_4
    :goto_4
    if-eqz v7, :cond_7

    .line 1017
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 1020
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1011
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "str":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v0

    .line 1012
    .restart local v0    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplicationSettings.save(): IOException at fstr.close: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1018
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1019
    .restart local v0    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplicationSettings.save(): IOException at str.close: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 1020
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1011
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v0

    .line 1012
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplicationSettings.save(): IOException at fstr.close: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1018
    :catch_4
    move-exception v0

    .line 1019
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ApplicationSettings.save(): IOException at str.close: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1008
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v1, :cond_5

    .line 1010
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1015
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 1017
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1020
    :cond_6
    :goto_7
    throw v8

    .line 1011
    :catch_5
    move-exception v0

    .line 1012
    .restart local v0    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ApplicationSettings.save(): IOException at fstr.close: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1018
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 1019
    .restart local v0    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ApplicationSettings.save(): IOException at str.close: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1008
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v7    # "str":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1005
    :catch_7
    move-exception v0

    goto/16 :goto_1

    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "str":Ljava/io/BufferedOutputStream;
    :cond_7
    move-object v6, v7

    .end local v7    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v1    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method
