.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method public constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/widget/CursorTreeAdapter;->access$100(Landroid/widget/CursorTreeAdapter;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/widget/CursorTreeAdapter;->access$200(Landroid/widget/CursorTreeAdapter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$300(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 20
    .line 21
    invoke-static {p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$300(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$300(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {p1, v0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
