.class public final synthetic Landroid/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroid/widget/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/c;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Landroid/widget/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/android/internal/content/FileSystemProvider;->a(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;Ljava/io/IOException;)V

    return-void
.end method

.method public final onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 7

    iget-object v0, p0, Landroid/widget/c;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/DatePicker;

    iget-object v0, p0, Landroid/widget/c;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/widget/DatePicker;->c(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public final onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/c;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/widget/TimePicker;->c(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/widget/TimePicker;II)V

    return-void
.end method
