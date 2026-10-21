.class public Lc1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc1/f;->W2([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/f;


# direct methods
.method public constructor <init>(Lc1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/f$a;->a:Lc1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc1/f$a;->a:Lc1/f;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/16 v2, 0x64

    invoke-static {v0, v2, v1}, Lc1/f;->O2(Lc1/f;I[I)V

    return-void
.end method
