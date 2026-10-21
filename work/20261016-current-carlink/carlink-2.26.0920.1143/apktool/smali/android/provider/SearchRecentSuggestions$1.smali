.class Landroid/provider/SearchRecentSuggestions$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/provider/SearchRecentSuggestions;

.field final synthetic val$line2:Ljava/lang/String;

.field final synthetic val$queryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions$1;->this$0:Landroid/provider/SearchRecentSuggestions;

    iput-object p3, p0, Landroid/provider/SearchRecentSuggestions$1;->val$queryString:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/SearchRecentSuggestions$1;->val$line2:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/provider/SearchRecentSuggestions$1;->this$0:Landroid/provider/SearchRecentSuggestions;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions$1;->val$queryString:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/provider/SearchRecentSuggestions$1;->val$line2:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->access$000(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/provider/SearchRecentSuggestions;->access$100()Ljava/util/concurrent/Semaphore;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
