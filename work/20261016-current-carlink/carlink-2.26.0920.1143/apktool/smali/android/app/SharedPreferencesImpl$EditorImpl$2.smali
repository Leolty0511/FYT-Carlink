.class Landroid/app/SharedPreferencesImpl$EditorImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl$EditorImpl;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

.field final synthetic val$awaitCommit:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$2;->val$awaitCommit:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/app/QueuedWork;->removeFinisher(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
