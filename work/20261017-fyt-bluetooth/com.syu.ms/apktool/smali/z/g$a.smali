.class public Lz/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/g;->f([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/g;


# direct methods
.method public constructor <init>(Lz/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/g$a;->a:Lz/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1
    sput v1, Lo0/e;->g0:I

    aput v1, v0, v1

    const/16 v1, 0x25

    invoke-static {v1, v0}, Lo0/g;->T(I[I)V

    return-void
.end method
