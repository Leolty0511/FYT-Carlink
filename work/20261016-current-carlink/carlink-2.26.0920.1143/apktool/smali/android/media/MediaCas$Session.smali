.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field final mSessionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method public constructor <init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->closeSession(Ljava/util/ArrayList;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public processEcm([B)V
    .locals 2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    return-void
.end method

.method public processEcm([BII)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 3
    invoke-static {v0}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v2, p1, p2, p3}, Landroid/media/MediaCas;->access$400(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/hardware/cas/V1_0/ICas;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p1

    .line 4
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {p1}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)V

    :goto_0
    return-void
.end method

.method public setPrivateData([B)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/MediaCas;->access$300(Landroid/media/MediaCas;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 15
    .line 16
    array-length v3, p1

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v2, p1, v4, v3}, Landroid/media/MediaCas;->access$400(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, v1, p1}, Landroid/hardware/cas/V1_0/ICas;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    iget-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
