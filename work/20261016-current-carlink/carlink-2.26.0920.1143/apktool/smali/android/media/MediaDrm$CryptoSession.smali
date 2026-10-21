.class public final Landroid/media/MediaDrm$CryptoSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CryptoSession"
.end annotation


# instance fields
.field private mSessionId:[B

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    .line 7
    .line 8
    invoke-static {p1, p2, p3}, Landroid/media/MediaDrm;->access$500(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2, p4}, Landroid/media/MediaDrm;->access$600(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$800(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B[B)[B
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$700(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B[B)[B
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2}, Landroid/media/MediaDrm;->access$900(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public verify([B[B[B)Z
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->access$1000(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result p1

    return p1
.end method
