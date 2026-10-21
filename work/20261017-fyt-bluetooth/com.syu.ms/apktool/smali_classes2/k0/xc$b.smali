.class public Lk0/xc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/xc;->U2([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xc;


# direct methods
.method public constructor <init>(Lk0/xc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xc$b;->a:Lk0/xc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/xc$b;->a:Lk0/xc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk0/xc;->n:Z

    return-void
.end method
