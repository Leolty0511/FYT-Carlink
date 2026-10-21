.class public Lk0/bb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/bb;


# direct methods
.method public constructor <init>(Lk0/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/bb$b;->a:Lk0/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/bb$b;->a:Lk0/bb;

    iget v0, v0, Lk0/bb;->g:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lk0/bb;->a3()V

    :cond_0
    return-void
.end method
