.class public final Landroid/os/StrictMode$VmPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VmPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$VmPolicy$Builder;
    }
.end annotation


# static fields
.field public static final LAX:Landroid/os/StrictMode$VmPolicy;


# instance fields
.field final classInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/StrictMode;->access$100()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;)V

    sput-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method private constructor <init>(ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    iput p1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    .line 4
    iput-object p2, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "classInstanceLimit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILjava/util/HashMap;Landroid/os/StrictMode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[StrictMode.VmPolicy; mask="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    .line 9
    .line 10
    const-string v2, "]"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
