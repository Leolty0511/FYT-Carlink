.class public Lcom/lsec/core/util/MySharePreference2;
.super Ljava/lang/Object;
.source "MySharePreference2.java"


# instance fields
.field private mSp:Landroid/content/SharedPreferences;

.field private mStrPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-virtual {p0, v0}, Lcom/lsec/core/util/MySharePreference2;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 123
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public commit(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    invoke-virtual {p0}, Lcom/lsec/core/util/MySharePreference2;->sync()V

    .line 115
    :cond_0
    return-void
.end method

.method public getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 32
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 25
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 46
    .end local p2    # "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-object p2
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/util/MySharePreference2;->mStrPath:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public saveBooleanValue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 69
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/lsec/core/util/MySharePreference2;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, p2, :cond_2

    .line 77
    :cond_0
    :goto_1
    return-void

    .line 69
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-virtual {p0, v0}, Lcom/lsec/core/util/MySharePreference2;->commit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1
.end method

.method public saveIntValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 58
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-virtual {p0, v0}, Lcom/lsec/core/util/MySharePreference2;->commit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public saveStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-virtual {p0, v0}, Lcom/lsec/core/util/MySharePreference2;->commit(Landroid/content/SharedPreferences$Editor;)V

    .line 55
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public saveStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/lsec/core/util/MySharePreference2;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/lsec/core/util/MySharePreference2;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-virtual {p0, v0}, Lcom/lsec/core/util/MySharePreference2;->commit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public sync()V
    .locals 6

    .prologue
    .line 91
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_0

    .line 92
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/lsec/core/util/MySharePreference2;->mStrPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 95
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    if-eqz v3, :cond_0

    .line 102
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 108
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    if-eqz v2, :cond_0

    .line 102
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 101
    :goto_2
    if-eqz v2, :cond_1

    .line 102
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 106
    :cond_1
    :goto_3
    throw v4

    .line 103
    :catch_2
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 97
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
