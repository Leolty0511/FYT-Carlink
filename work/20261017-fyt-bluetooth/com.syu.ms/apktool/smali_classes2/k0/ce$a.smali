.class public Lk0/ce$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ce;


# direct methods
.method public constructor <init>(Lk0/ce;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ce$a;->a:Lk0/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->e2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lo1/u;->z()I

    const/4 v0, 0x0

    .line 3
    sput v0, Lu0/b;->e2:I

    :cond_0
    return-void
.end method
