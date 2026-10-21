.class Landroid/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/SearchView;->access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/widget/SearchView;->access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/widget/SearchView;->access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
