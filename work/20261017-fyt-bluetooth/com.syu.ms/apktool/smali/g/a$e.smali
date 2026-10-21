.class public Lg/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a;


# direct methods
.method public constructor <init>(Lg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a$e;->a:Lg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, Ld1/d;->f:I

    invoke-static {v0}, Lo1/q0;->I(I)V

    return-void
.end method
