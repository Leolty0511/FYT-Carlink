.class public Landroid/app/AppRelevance$RelevanceDate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppRelevance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelevanceDate"
.end annotation


# instance fields
.field public launchCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/AppRelevance$RelevanceDate;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AppRelevance$RelevanceDate;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/AppRelevance$RelevanceDate;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "launchcount"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Landroid/app/AppRelevance;->getAttrValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Landroid/app/AppRelevance$RelevanceDate;->launchCount:J

    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " count :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/app/AppRelevance$RelevanceDate;->launchCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToFile(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    iget-wide v0, p0, Landroid/app/AppRelevance$RelevanceDate;->launchCount:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "launchcount"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
