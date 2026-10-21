.class public Landroid/app/ProcState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTR_PKG:Ljava/lang/String; = "pkgName"

.field private static final ATTR_PROC:Ljava/lang/String; = "procName"

.field private static final ATTR_TOP_PSS:Ljava/lang/String; = "topPss"

.field private static final ATTR_TOP_PSS_SAMPLE_COUNT:Ljava/lang/String; = "topPssCount"

.field private static final ATTR_USERID:Ljava/lang/String; = "userid"

.field private static final TAG:Ljava/lang/String; = "ProcState"


# instance fields
.field public avgTopPss:J

.field public mUserId:Ljava/lang/Integer;

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public topPssSampleCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/app/ProcState;->packageName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Landroid/app/ProcState;->processName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/app/ProcState;->avgTopPss:J

    .line 5
    iput-wide v0, p0, Landroid/app/ProcState;->topPssSampleCount:J

    .line 6
    iput-object p2, p0, Landroid/app/ProcState;->mUserId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Landroid/app/ProcState;->packageName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Landroid/app/ProcState;->processName:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Landroid/app/ProcState;->avgTopPss:J

    .line 11
    iput-wide p5, p0, Landroid/app/ProcState;->topPssSampleCount:J

    .line 12
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ProcState;->mUserId:Ljava/lang/Integer;

    return-void
.end method

.method public static restoreFromFile(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/ProcState;
    .locals 5

    .line 1
    new-instance v0, Landroid/app/ProcState;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ProcState;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    if-ltz v1, :cond_5

    .line 13
    .line 14
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string/jumbo v4, "userid"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, v0, Landroid/app/ProcState;->mUserId:Ljava/lang/Integer;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string/jumbo v4, "pkgName"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iput-object v3, v0, Landroid/app/ProcState;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo v4, "procName"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    iput-object v3, v0, Landroid/app/ProcState;->processName:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string/jumbo v4, "topPss"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iput-wide v2, v0, Landroid/app/ProcState;->avgTopPss:J

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const-string/jumbo v4, "topPssCount"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    iput-wide v2, v0, Landroid/app/ProcState;->topPssSampleCount:J

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    const-string v3, "error attr name....:"

    .line 103
    .line 104
    const-string v4, "ProcState"

    .line 105
    .line 106
    invoke-static {v3, v2, v4}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/ProcState;->mUserId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ProcState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|proc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ProcState;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|pss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ProcState;->avgTopPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|cou t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/ProcState;->topPssSampleCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToFile(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/ProcState;->mUserId:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string/jumbo v2, "userid"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "pkgName"

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroid/app/ProcState;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v0, "procName"

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroid/app/ProcState;->processName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Landroid/app/ProcState;->avgTopPss:J

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string/jumbo v2, "topPss"

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    .line 41
    .line 42
    iget-wide v2, p0, Landroid/app/ProcState;->topPssSampleCount:J

    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string/jumbo v2, "topPssCount"

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    .line 53
    .line 54
    return-void
.end method
