-- ---------------------------------------------------------------------------------------------- --
-- Copyright G. Qyy, (avril 2011) 
-- 
-- pub-gh@qyy.fr
-- 
-- Ce logiciel est un programme informatique servant à tester une nouvelles façon de concevoir les
-- bases de données MySQL. Ce logiciel est juste une "preuve de concept" et ne doit pas être utilisé
-- dans un environnement de production.
-- 
-- Ce logiciel est régi par la licence CeCILL-B soumise au droit français et respectant les
-- principes de diffusion des logiciels libres. Vous pouvez utiliser, modifier et/ou redistribuer ce
-- programme sous les conditions de la licence CeCILL-B telle que diffusée par le CEA, le CNRS et 
-- l'INRIA sur le site "http://www.cecill.info".
-- 
-- En contrepartie de l'accessibilité au code source et des droits de copie, de modification et de
-- redistribution accordés par cette licence, il n'est offert aux utilisateurs qu'une garantie
-- limitée. Pour les mêmes raisons, seule une responsabilité restreinte pèse sur l'auteur du
-- programme, le titulaire des droits patrimoniaux et les concédants successifs.
-- 
-- A cet égard l'attention de l'utilisateur est attirée sur les risques associés au chargement, à
-- l'utilisation, à la modification et/ou au développement et à la reproduction du logiciel par
-- l'utilisateur étant donné sa spécificité de logiciel libre, qui peut le rendre complexe à
-- manipuler et qui le réserve donc à des développeurs et des professionnels avertis possédant des
-- connaissances informatiques approfondies. Les utilisateurs sont donc invités à charger et tester
-- l'adéquation du logiciel à leurs besoins dans des conditions permettant d'assurer la sécurité de
-- leurs systèmes et ou de leurs données et, plus généralement, à l'utiliser et l'exploiter dans les
-- mêmes conditions de sécurité. 
-- 
-- Le fait que vous puissiez accéder à cet en-tête signifie que vous avez pris connaissance de la
-- licence CeCILL-B, et que vous enavez accepté les termes.
-- ---------------------------------------------------------------------------------------------- --

-- ---------------------------------------------------------------------------------------------- --
-- Convertit les caractères XML réservés en entités XML
-- ---------------------------------------------------------------------------------------------- --
DELIMITER $$

CREATE PROCEDURE `prc_xml_entities_encode` (
  INOUT chaine TEXT)
BEGIN

    SET chaine =
      REPLACE(
        REPLACE(
          REPLACE(
            REPLACE(chaine, '&', '&amp;'),
            '>', '&gt;'),
          '<', '&lt;'),
        '"', '&quot;'); -- émarger le " (problèmes dans certains cas...) ?

END$$