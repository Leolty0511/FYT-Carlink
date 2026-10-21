.class public Lg/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/h;


# direct methods
.method public constructor <init>(Lg/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/h$b;->a:Lg/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/h$b;->a:Lg/h;

    sget v1, Lu0/b;->w:I

    invoke-virtual {v0, v1}, Lg/h;->h0(I)V

    return-void
.end method
