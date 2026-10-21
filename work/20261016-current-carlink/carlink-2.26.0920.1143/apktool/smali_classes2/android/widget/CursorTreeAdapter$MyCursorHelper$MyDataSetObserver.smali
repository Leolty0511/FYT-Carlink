.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method private constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Landroid/widget/CursorTreeAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
