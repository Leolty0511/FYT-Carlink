.class Landroid/media/TtmlNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAttributes:Ljava/lang/String;

.field public final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final mEndTimeMs:J

.field public final mName:Ljava/lang/String;

.field public final mParent:Landroid/media/TtmlNode;

.field public final mRunId:J

.field public final mStartTimeMs:J

.field public final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    .line 16
    .line 17
    iput-wide p4, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    .line 18
    .line 19
    iput-wide p6, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    .line 20
    .line 21
    iput-object p8, p0, Landroid/media/TtmlNode;->mParent:Landroid/media/TtmlNode;

    .line 22
    .line 23
    iput-wide p9, p0, Landroid/media/TtmlNode;->mRunId:J

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public isActive(JJ)Z
    .locals 2

    iget-wide v0, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    iget-wide p1, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
