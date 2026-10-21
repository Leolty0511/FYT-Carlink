.class public Ld1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld1/b;


# direct methods
.method public constructor <init>(Ld1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/b$a;->a:Ld1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ld1/b$a;->a:Ld1/b;

    invoke-virtual {v0}, Ld1/b;->g()V

    :cond_0
    return-void
.end method
