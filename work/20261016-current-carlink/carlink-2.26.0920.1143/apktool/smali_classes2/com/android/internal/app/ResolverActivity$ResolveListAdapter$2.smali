.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->postListReadyRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->setTitleAndIcon()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->access$702(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 26
    .line 27
    .line 28
    return-void
.end method
