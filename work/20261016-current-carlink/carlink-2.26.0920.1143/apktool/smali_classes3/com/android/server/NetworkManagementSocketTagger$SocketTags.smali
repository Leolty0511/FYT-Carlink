.class public Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementSocketTagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocketTags"
.end annotation


# instance fields
.field public statsTag:I

.field public statsUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    .line 8
    .line 9
    return-void
.end method
