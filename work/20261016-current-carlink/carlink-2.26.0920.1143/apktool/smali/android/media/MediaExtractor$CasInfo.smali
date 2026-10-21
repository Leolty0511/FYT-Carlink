.class public final Landroid/media/MediaExtractor$CasInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CasInfo"
.end annotation


# instance fields
.field private final mSession:Landroid/media/MediaCas$Session;

.field private final mSystemId:I


# direct methods
.method public constructor <init>(ILandroid/media/MediaCas$Session;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getSession()Landroid/media/MediaCas$Session;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSession:Landroid/media/MediaCas$Session;

    return-object v0
.end method

.method public getSystemId()I
    .locals 1

    iget v0, p0, Landroid/media/MediaExtractor$CasInfo;->mSystemId:I

    return v0
.end method
