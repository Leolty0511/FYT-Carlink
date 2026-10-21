.class public Lk0/j0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j0;


# direct methods
.method public constructor <init>(Lk0/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j0$f;->a:Lk0/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/j0$f;->a:Lk0/j0;

    const/4 v1, 0x0

    iput v1, v0, Lk0/j0;->C:I

    .line 2
    iput v1, v0, Lk0/j0;->B:I

    .line 3
    invoke-static {v0}, Lk0/j0;->r3(Lk0/j0;)V

    return-void
.end method
