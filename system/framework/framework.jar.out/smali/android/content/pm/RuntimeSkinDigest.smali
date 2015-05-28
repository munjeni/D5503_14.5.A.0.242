.class public Landroid/content/pm/RuntimeSkinDigest;
.super Ljava/lang/Object;
.source "RuntimeSkinDigest.java"


# static fields
.field private static final DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "RuntimeSkinDigest"


# instance fields
.field private mDigest:[B

.field private mTimeStamp:J


# direct methods
.method private constructor <init>([B)V
    .locals 0
    .param p1, "digest"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    .line 57
    return-void
.end method

.method public static createDigestFromStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Landroid/content/pm/RuntimeSkinDigest;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v5, 0x0

    .line 146
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v5

    .line 149
    :cond_1
    const-string v6, "SHA-256"

    invoke-static {v6}, Landroid/content/pm/RuntimeSkinDigest;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 151
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    new-instance v2, Ljava/security/DigestInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    .local v2, "dis":Ljava/security/DigestInputStream;
    const/16 v6, 0x2000

    :try_start_1
    new-array v0, v6, [B

    .line 156
    .local v0, "buffer":[B
    :cond_2
    :goto_1
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v2, v0, v6, v7}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 157
    if-eqz p1, :cond_2

    .line 158
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 162
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "RuntimeSkinDigest"

    const-string v7, "Could not create digest from stream"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 161
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    :cond_3
    :try_start_4
    new-instance v6, Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/pm/RuntimeSkinDigest;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    if-eqz p1, :cond_4

    .line 169
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_4
    move-object v5, v6

    goto :goto_0

    .line 165
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_0
    move-exception v5

    :try_start_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 168
    .end local v2    # "dis":Ljava/security/DigestInputStream;
    :catchall_1
    move-exception v5

    if-eqz p1, :cond_5

    .line 169
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v5
.end method

.method public static createDigestFromString(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/pm/RuntimeSkinDigest;

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/RuntimeSkinDigest;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createEmptyDigest()Landroid/content/pm/RuntimeSkinDigest;
    .locals 3

    .prologue
    .line 111
    const-string v1, "SHA-256"

    invoke-static {v1}, Landroid/content/pm/RuntimeSkinDigest;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 112
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    new-instance v1, Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Landroid/content/pm/RuntimeSkinDigest;-><init>([B)V

    return-object v1
.end method

.method private static getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "alg"    # Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 82
    instance-of v2, p1, Landroid/content/pm/RuntimeSkinDigest;

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 85
    check-cast v0, Landroid/content/pm/RuntimeSkinDigest;

    .line 86
    .local v0, "other":Landroid/content/pm/RuntimeSkinDigest;
    if-eq v0, p0, :cond_2

    iget-object v2, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    iget-object v3, v0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Landroid/content/pm/RuntimeSkinDigest;->mTimeStamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Landroid/content/pm/RuntimeSkinDigest;->mTimeStamp:J

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinDigest;->mDigest:[B

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
