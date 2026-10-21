.class Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

.field final synthetic val$result:Landroid/service/resolver/IResolverRankerResult;

.field final synthetic val$targets:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    .locals 0

    iput-object p1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    iput-object p2, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    iput-object p3, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->this$1:Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper;->this$0:Landroid/service/resolver/ResolverRankerService;

    .line 4
    .line 5
    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/service/resolver/ResolverRankerService;->onPredictSharingProbabilities(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$targets:Ljava/util/List;

    .line 11
    .line 12
    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/service/resolver/ResolverRankerService;->access$100(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "onPredictSharingProbabilities failed; send null results: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "ResolverRankerService"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Landroid/service/resolver/ResolverRankerService$ResolverRankerServiceWrapper$1;->val$result:Landroid/service/resolver/IResolverRankerResult;

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/service/resolver/ResolverRankerService;->access$100(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
