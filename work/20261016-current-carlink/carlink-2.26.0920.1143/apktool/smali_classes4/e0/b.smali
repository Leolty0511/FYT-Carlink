.class public final Le0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/g;


# static fields
.field public static final a:Le0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le0/b;

    invoke-direct {v0}, Le0/b;-><init>()V

    sput-object v0, Le0/b;->a:Le0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lt/e;->b:Lt/e;

    return-object v0
.end method
