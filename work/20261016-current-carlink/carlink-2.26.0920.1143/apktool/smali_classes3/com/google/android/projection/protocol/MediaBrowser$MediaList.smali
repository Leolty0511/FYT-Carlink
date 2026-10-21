.class public Lcom/google/android/projection/protocol/MediaBrowser$MediaList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaList"
.end annotation


# instance fields
.field public albumArt:[B

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/projection/protocol/MediaBrowser;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/MediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->this$0:Lcom/google/android/projection/protocol/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
