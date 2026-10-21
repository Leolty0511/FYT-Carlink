.class public Lg/o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/o;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/o$d;->a:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    const-string/jumbo v0, "ro.client.foreign"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
