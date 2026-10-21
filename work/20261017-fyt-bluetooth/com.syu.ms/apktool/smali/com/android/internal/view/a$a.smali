.class public Lcom/android/internal/view/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/view/a;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/a$a;->a:Lcom/android/internal/view/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/a$a;->a:Lcom/android/internal/view/a;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/a;->executeMessage(Landroid/os/Message;)V

    return-void
.end method
